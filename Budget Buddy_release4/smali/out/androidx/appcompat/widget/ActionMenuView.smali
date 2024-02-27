.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/s0;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$b;
.implements Landroidx/appcompat/view/menu/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$c;,
        Landroidx/appcompat/widget/ActionMenuView$a;,
        Landroidx/appcompat/widget/ActionMenuView$b;,
        Landroidx/appcompat/widget/ActionMenuView$d;,
        Landroidx/appcompat/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field E:Landroidx/appcompat/widget/ActionMenuView$e;

.field private t:Landroidx/appcompat/view/menu/e;

.field private u:Landroid/content/Context;

.field private v:I

.field private w:Z

.field private x:Landroidx/appcompat/widget/c;

.field private y:Landroidx/appcompat/view/menu/j$a;

.field z:Landroidx/appcompat/view/menu/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/s0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/s0;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->C:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroid/content/Context;

    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->v:I

    return-void
.end method

.method static H(Landroid/view/View;IIII)I
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    move-object p4, p0

    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->f()Z

    move-result p4

    if-eqz p4, :cond_28

    const/4 p4, 0x1

    goto :goto_29

    :cond_28
    const/4 p4, 0x0

    :goto_29
    const/4 v3, 0x2

    if-lez p2, :cond_4d

    if-eqz p4, :cond_30

    if-lt p2, v3, :cond_4d

    :cond_30
    mul-int p2, p2, p1

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int v4, p2, p1

    rem-int/2addr p2, p1

    if-eqz p2, :cond_46

    add-int/lit8 v4, v4, 0x1

    :cond_46
    if-eqz p4, :cond_4b

    if-ge v4, v3, :cond_4b

    goto :goto_4e

    :cond_4b
    move v3, v4

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-nez p2, :cond_55

    if-eqz p4, :cond_55

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    mul-int p1, p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private I(II)V
    .registers 32

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->C:I

    div-int v7, v2, v4

    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_35

    invoke-virtual {v0, v2, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_35
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    :goto_44
    if-ge v12, v8, :cond_c3

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_56

    goto/16 :goto_bd

    :cond_56
    instance-of v3, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/lit8 v14, v14, 0x1

    if-eqz v3, :cond_65

    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    move/from16 v20, v14

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_68

    :cond_65
    move/from16 v20, v14

    const/4 v14, 0x0

    :goto_68
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$c;

    iput-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    iput-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    iput v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v3, :cond_87

    move-object v3, v11

    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->f()Z

    move-result v3

    if-eqz v3, :cond_87

    const/4 v3, 0x1

    goto :goto_88

    :cond_87
    const/4 v3, 0x0

    :goto_88
    iput-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    iget-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v3, :cond_90

    const/4 v3, 0x1

    goto :goto_91

    :cond_90
    move v3, v7

    :goto_91
    invoke-static {v11, v4, v3, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->H(Landroid/view/View;IIII)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-eqz v14, :cond_9f

    add-int/lit8 v16, v16, 0x1

    :cond_9f
    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v9, :cond_a4

    const/4 v13, 0x1

    :cond_a4
    sub-int/2addr v7, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_ba

    shl-int v3, v9, v12

    move v11, v10

    int-to-long v9, v3

    or-long v9, v17, v9

    move-wide/from16 v17, v9

    move v10, v11

    goto :goto_bb

    :cond_ba
    move v11, v10

    :goto_bb
    move/from16 v14, v20

    :goto_bd
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    const/4 v9, 0x0

    goto :goto_44

    :cond_c3
    move/from16 v19, v3

    const/4 v3, 0x2

    if-eqz v13, :cond_cc

    if-ne v14, v3, :cond_cc

    const/4 v5, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v5, 0x0

    :goto_cd
    const/4 v9, 0x0

    :goto_ce
    if-lez v16, :cond_170

    if-lez v7, :cond_170

    const v20, 0x7fffffff

    const/4 v3, 0x0

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const-wide/16 v20, 0x0

    :goto_dc
    if-ge v11, v8, :cond_10f

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v9

    move-object/from16 v9, v24

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v24, v10

    iget-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v10, :cond_f3

    goto :goto_108

    :cond_f3
    iget v9, v9, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    const-wide/16 v22, 0x1

    if-ge v9, v12, :cond_fe

    shl-long v20, v22, v11

    move v12, v9

    const/4 v3, 0x1

    goto :goto_108

    :cond_fe
    if-ne v9, v12, :cond_108

    shl-long v9, v22, v11

    or-long v9, v20, v9

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v20, v9

    :cond_108
    :goto_108
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v24

    move/from16 v9, v25

    goto :goto_dc

    :cond_10f
    move/from16 v25, v9

    move/from16 v24, v10

    or-long v17, v17, v20

    if-le v3, v7, :cond_11b

    move v11, v1

    move/from16 v26, v2

    goto :goto_177

    :cond_11b
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    :goto_11e
    if-ge v3, v8, :cond_16a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v26, v2

    const/4 v11, 0x1

    shl-int v2, v11, v3

    move v11, v1

    int-to-long v1, v2

    and-long v22, v20, v1

    const-wide/16 v27, 0x0

    cmp-long v25, v22, v27

    if-nez v25, :cond_142

    iget v9, v10, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    if-ne v9, v12, :cond_13f

    or-long v17, v17, v1

    :cond_13f
    move/from16 v27, v5

    goto :goto_162

    :cond_142
    if-eqz v5, :cond_156

    iget-boolean v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-eqz v1, :cond_156

    const/4 v1, 0x1

    if-ne v7, v1, :cond_156

    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->D:I

    add-int v1, v2, v4

    move/from16 v27, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_158

    :cond_156
    move/from16 v27, v5

    :goto_158
    iget v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    iput-boolean v2, v10, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    add-int/lit8 v7, v7, -0x1

    :goto_162
    add-int/lit8 v3, v3, 0x1

    move v1, v11

    move/from16 v2, v26

    move/from16 v5, v27

    goto :goto_11e

    :cond_16a
    move/from16 v10, v24

    const/4 v3, 0x2

    const/4 v9, 0x1

    goto/16 :goto_ce

    :cond_170
    move v11, v1

    move/from16 v26, v2

    move/from16 v25, v9

    move/from16 v24, v10

    :goto_177
    const/4 v1, 0x1

    if-nez v13, :cond_17e

    if-ne v14, v1, :cond_17e

    const/4 v2, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v2, 0x0

    :goto_17f
    if-lez v7, :cond_234

    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-eqz v3, :cond_234

    sub-int/2addr v14, v1

    if-lt v7, v14, :cond_18e

    if-nez v2, :cond_18e

    if-le v15, v1, :cond_234

    :cond_18e
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_1cf

    const-wide/16 v2, 0x1

    and-long v2, v17, v2

    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v9, 0x0

    cmp-long v12, v2, v9

    const/4 v14, 0x0

    if-eqz v12, :cond_1b1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_1b1

    sub-float/2addr v1, v5

    :cond_1b1
    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x1

    shl-int v9, v3, v2

    int-to-long v9, v9

    and-long v9, v17, v9

    const-wide/16 v12, 0x0

    cmp-long v3, v9, v12

    if-eqz v3, :cond_1d0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_1d0

    sub-float/2addr v1, v5

    goto :goto_1d0

    :cond_1cf
    const/4 v14, 0x0

    :cond_1d0
    :goto_1d0
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1db

    mul-int v7, v7, v4

    int-to-float v2, v7

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_1dc

    :cond_1db
    const/4 v1, 0x0

    :goto_1dc
    move/from16 v9, v25

    const/4 v2, 0x0

    :goto_1df
    if-ge v2, v8, :cond_237

    const/4 v3, 0x1

    shl-int v5, v3, v2

    int-to-long v12, v5

    and-long v12, v17, v12

    const-wide/16 v15, 0x0

    cmp-long v3, v12, v15

    if-nez v3, :cond_1f0

    const/4 v3, 0x1

    const/4 v7, 0x2

    goto :goto_231

    :cond_1f0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$c;

    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_212

    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    if-nez v2, :cond_20f

    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-nez v3, :cond_20f

    neg-int v3, v1

    const/4 v7, 0x2

    div-int/2addr v3, v7

    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_210

    :cond_20f
    const/4 v7, 0x2

    :goto_210
    const/4 v3, 0x1

    goto :goto_220

    :cond_212
    const/4 v7, 0x2

    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v3, :cond_222

    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    neg-int v9, v1

    div-int/2addr v9, v7

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_220
    const/4 v9, 0x1

    goto :goto_231

    :cond_222
    const/4 v3, 0x1

    if-eqz v2, :cond_229

    div-int/lit8 v10, v1, 0x2

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_229
    add-int/lit8 v10, v8, -0x1

    if-eq v2, v10, :cond_231

    div-int/lit8 v10, v1, 0x2

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_231
    :goto_231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1df

    :cond_234
    const/4 v14, 0x0

    move/from16 v9, v25

    :cond_237
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v9, :cond_25e

    const/4 v9, 0x0

    :goto_23c
    if-ge v9, v8, :cond_25e

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v5, v3, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    if-nez v5, :cond_24d

    goto :goto_25b

    :cond_24d
    iget v5, v3, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    mul-int v5, v5, v4

    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    add-int/2addr v5, v3

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_25b
    add-int/lit8 v9, v9, 0x1

    goto :goto_23c

    :cond_25e
    if-eq v11, v1, :cond_263

    move/from16 v3, v24

    goto :goto_265

    :cond_263
    move/from16 v3, v19

    :goto_265
    move/from16 v2, v26

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected A(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    if-eqz p1, :cond_1c

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    if-eqz v0, :cond_e

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V

    goto :goto_13

    :cond_e
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_13
    iget p1, v0, Landroidx/appcompat/widget/s0$a;->b:I

    if-gtz p1, :cond_1b

    const/16 p1, 0x10

    iput p1, v0, Landroidx/appcompat/widget/s0$a;->b:I

    :cond_1b
    return-object v0

    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->y()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public B()Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->y()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    return-object v0
.end method

.method protected C(I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1f

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz v3, :cond_1f

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$a;->b()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1f
    if-lez p1, :cond_2c

    instance-of p1, v2, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p1, :cond_2c

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$a;->c()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2c
    return v0
.end method

.method public D()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public E()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->D()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public F()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->E()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public G()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    return v0
.end method

.method public J()Landroidx/appcompat/view/menu/e;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    return-object v0
.end method

.method public K(Landroidx/appcompat/view/menu/j$a;Landroidx/appcompat/view/menu/e$a;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Landroidx/appcompat/view/menu/j$a;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->z:Landroidx/appcompat/view/menu/e$a;

    return-void
.end method

.method public L()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->K()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/g;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/e;->L(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->y()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->z(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->A(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/e;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/e;->R(Landroidx/appcompat/view/menu/e$a;)V

    new-instance v1, Landroidx/appcompat/widget/c;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/c;->J(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Landroidx/appcompat/view/menu/j$a;

    if-eqz v1, :cond_29

    goto :goto_2e

    :cond_29
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$b;

    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    :goto_2e
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/a;->k(Landroidx/appcompat/view/menu/j$a;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/e;->c(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/c;->H(Landroidx/appcompat/widget/ActionMenuView;)V

    :cond_3f
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic i()Landroidx/appcompat/widget/s0$a;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->y()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/s0$a;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->z(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic k(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/s0$a;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->A(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/c;->f(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->E()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->B()Z

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->K()Z

    :cond_1d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->x()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    if-nez v1, :cond_a

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/s0;->onLayout(ZIIII)V

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/s0;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/t1;->b(Landroid/view/View;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2a
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_8d

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_3a

    goto :goto_8a

    :cond_3a
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v14, :cond_7a

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->C(I)Z

    move-result v14

    if-eqz v14, :cond_4f

    add-int/2addr v9, v3

    :cond_4f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_5f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_6f

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    :goto_6f
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    const/4 v9, 0x1

    goto :goto_8a

    :cond_7a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->C(I)Z

    add-int/lit8 v10, v10, 0x1

    :goto_8a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_8d
    if-ne v1, v12, :cond_ac

    if-nez v9, :cond_ac

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_ac
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_b4

    div-int v3, v5, v10

    goto :goto_b5

    :cond_b4
    const/4 v3, 0x0

    :goto_b5
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_fa

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_c6
    if-ge v7, v1, :cond_133

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_f7

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_dd

    goto :goto_f7

    :cond_dd
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_f7
    :goto_f7
    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    const/4 v7, 0x0

    :goto_ff
    if-ge v7, v1, :cond_133

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_130

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_116

    goto :goto_130

    :cond_116
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    :cond_130
    :goto_130
    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    :cond_133
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    if-eq v0, v1, :cond_15

    iput v3, p0, Landroidx/appcompat/widget/ActionMenuView;->B:I

    :cond_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/view/menu/e;

    if-eqz v1, :cond_2a

    iget v4, p0, Landroidx/appcompat/widget/ActionMenuView;->B:I

    if-eq v0, v4, :cond_2a

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->B:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/e;->K(Z)V

    :cond_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    if-eqz v1, :cond_38

    if-lez v0, :cond_38

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->I(II)V

    goto :goto_4f

    :cond_38
    const/4 v1, 0x0

    :goto_39
    if-ge v1, v0, :cond_4c

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_4c
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/s0;->onMeasure(II)V

    :goto_4f
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->G(Z)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->E:Landroidx/appcompat/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->I(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:I

    if-eq v0, p1, :cond_1a

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:I

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroid/content/Context;

    goto :goto_1a

    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/c;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/c;->H(Landroidx/appcompat/widget/ActionMenuView;)V

    return-void
.end method

.method public x()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->y()Z

    :cond_7
    return-void
.end method

.method protected y()Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/s0$a;->b:I

    return-object v0
.end method

.method public z(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
