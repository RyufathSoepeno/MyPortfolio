import sys
import os
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from collections import Counter

from matplotlib.patches import Wedge, Circle, Rectangle

def analyze_file(file_path):

    df = pd.read_excel(file_path, engine='openpyxl', skip_blank_lines=False) if file_path.endswith('.xlsx') else pd.read_csv(file_path)

    # Clean column names to prevent whitespace mismatches
    df.columns = df.columns.str.strip().str.lower().str.replace(r'\s+', '_', regex=True)

    df.rename(columns={
        "2._how_would_such_inconsistencies_make_you_feel?": "Runtime Error",
        "2._how_would_such_logical_error_make_you_feel?": "Logical Error",
        "2._how_would_such_false/misleading_output_make_you_feel?": "Functional Error",
        "3._how_would_such_design_make_you_feel?": "Design Error"
    }, inplace=True)

    # Define expected columns (after cleaning)
    expected_columns = [
        "Runtime Error",
        "Logical Error",
        "Functional Error",
        "Design Error"
    ]

    # Attempt to find closest matches if exact names are missing
    valid_columns = [col for col in df.columns if any(exp in col for exp in expected_columns)]

    if not valid_columns:
        print("Warning: None of the expected columns were found! Please check column names.")
        return

    sentiment_scores_df = df[valid_columns]
    sentiment_scores = {col: sentiment_scores_df[col].dropna().astype(int).tolist() for col in valid_columns}

    sentiment_counts = {section: Counter(scores) for section, scores in sentiment_scores.items()}

    output_dir = r"C:\xampp\htdocs\Capstone\Images"
    os.makedirs(output_dir, exist_ok=True)  # Ensure the folder exists

    # =====================================================================================================================

    # Bar Plot
    plt.figure(figsize=(12, 6))
    width = 0.2
    x = np.arange(len(sentiment_counts))
    colors = ['red', 'orange', 'yellow', 'green']

    for i, score in enumerate(range(1, 5)):
        y = [sentiment_counts[section][score] for section in sentiment_scores.keys()]
        bars = plt.bar(x + i * width, y, width, label=f'Score {score}', color=colors[i])
        # Add value labels on top of bars
        for bar in bars:
            plt.text(bar.get_x() + bar.get_width() / 2, bar.get_height() + 0.04, str(bar.get_height()),
                     ha='center', va='bottom', fontsize=9)

    plt.title('Bar Plot of Affective Experience Scores by Error Type')
    plt.xlabel('Error Types')
    plt.ylabel('Frequency')
    plt.xticks(x + 1.5 * width, list(sentiment_scores.keys()))
    plt.legend(title='Scores')
    plt.grid(axis='y')
    plt.savefig(os.path.join(output_dir, "bar_plot.png"))
    plt.close()

    # =====================================================================================================================

    # Box Plot
    plt.figure(figsize=(12, 6))
    plt.boxplot(sentiment_scores.values(), vert=True, patch_artist=True, tick_labels=list(sentiment_scores.keys()))
    plt.title('Box Plot of Affective Experience Scores by Error Type')
    plt.xlabel('Error Types')
    plt.ylabel('Affective Experience Scores')
    plt.grid(axis='y')
    plt.savefig(os.path.join(output_dir, "box_plot.png"))
    plt.close()

    # =====================================================================================================================

    # Stacked Column Chart
    stacked_data = {
        section: [scores.count(score) / len(scores)
        for score in range(1, 5)] for section, scores in sentiment_scores.items()
    }

    plt.figure(figsize=(12, 6))
    ind = np.arange(len(stacked_data))
    cumulative_bottom = np.zeros(len(stacked_data))
    colors = ['red', 'orange', 'yellow', 'green']

    for score in range(1, 5):
        proportions = [stacked_data[section][score - 1] for section in sentiment_scores.keys()]
        bars = plt.bar(ind, proportions, bottom=cumulative_bottom, label=f'Score {score}', color=colors[score - 1])


        # Add centered labels for each stack segment
        for rect, prop, base in zip(bars, proportions, cumulative_bottom):
            # Calculate the position for the label (center of the bar segment)
            height = rect.get_height()
            if height > 0:  # Only add labels if the height is non-zero
                plt.text(
                    rect.get_x() + rect.get_width() / 2,  # X position (center of the bar)
                    base + height / 2,  # Y position (middle of the segment)
                    f'{prop:.2%}',  # Label as a percentage
                    ha='center', va='center', fontsize=8, color='black'
                )

        cumulative_bottom += proportions

    plt.title('Stacked Column Chart of Affective Experience Scores by Error Type')
    plt.xlabel('Error Types')
    plt.ylabel('Proportions')
    plt.xticks(ind, list(sentiment_scores.keys()))
    plt.legend(title='Scores')
    plt.grid(axis='y')
    plt.savefig(os.path.join(output_dir, "stacked_column_chart.png"))
    plt.close()

    # =====================================================================================================================

    # Gauge chart properties

    def degree_range(n):
        start = np.linspace(0, 180, n + 1)[:-1]
        end = np.linspace(0, 180, n + 1)[1:]
        mid_points = (start + end) / 2
        return list(zip(start, end)), mid_points

    def rot_text(ang):
        return ang - 90

    def gauge(ax, labels=['1', '2', '3', '4'], colors=None, arrow=1, title=''):
        N = len(labels)
        if arrow > N:
            raise Exception("Arrow value exceeds number of labels!")

        if colors is None:
            colors = ['#007A00', '#0063BF', '#FFCC00', '#ED1C24']  # Default colors

        ang_range, mid_points = degree_range(N)
        labels = labels[::-1]

        patches = []
        for ang, c in zip(ang_range, colors):
            patches.append(Wedge((0., 0.), .4, *ang, facecolor='w', lw=2))
            patches.append(Wedge((0., 0.), .4, *ang, width=0.10, facecolor=c, lw=2, alpha=0.5))

        for p in patches:
            ax.add_patch(p)

        for mid, lab in zip(mid_points, labels):
            ax.text(0.35 * np.cos(np.radians(mid)), 0.35 * np.sin(np.radians(mid)), lab,
                    horizontalalignment='center', verticalalignment='center', fontsize=14,
                    fontweight='bold', rotation=rot_text(mid))

        ax.add_patch(Rectangle((-0.4, -0.1), 0.8, 0.1, facecolor='w', lw=2))
        ax.text(0, -0.05, title, horizontalalignment='center',
                verticalalignment='center', fontsize=12, fontweight='bold')

        # Position
        pos = mid_points[-1] - (avg_sentiment - 1) * (mid_points[-1] - mid_points[0]) / (N - 1)

        ax.arrow(0, 0, 0.225 * np.cos(np.radians(pos)), 0.225 * np.sin(np.radians(pos)),
                 width=0.04, head_width=0.09, head_length=0.1, fc='k', ec='k')
        ax.add_patch(Circle((0, 0), radius=0.02, facecolor='k'))
        ax.add_patch(Circle((0, 0), radius=0.01, facecolor='w', zorder=11))

        ax.set_frame_on(False)
        ax.set_xticks([])
        ax.set_yticks([])
        ax.axis('equal')

    def create_gauge(ax, arrow, title):
        gauge(ax, arrow=arrow, title=title)

    # Create a 2x2 grid for 4 gauge charts
    fig, axes = plt.subplots(2, 2, figsize=(16, 10))
    avg_sentiment = round(avg_sentiment, 2)

    for i, (ax, section) in enumerate(zip(axes.flat, valid_columns)):
        avg_sentiment = sum(sentiment_scores[section]) / len(sentiment_scores[section]) if sentiment_scores[
            section] else 1
        create_gauge(ax, avg_sentiment, f'\n\nAverage Affective Experience Score\nof {section}\n\n{avg_sentiment:.2f}/4')

    plt.subplots_adjust(wspace=0.3, hspace=0.2)
    plt.savefig(os.path.join(output_dir, "gauge_chart.png"))
    plt.close()

if __name__ == "__main__":
    if len(sys.argv) > 1:
        analyze_file(sys.argv[1])
    else:
        print("No file provided.")
