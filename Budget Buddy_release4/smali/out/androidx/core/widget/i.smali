.class public Landroidx/core/widget/i;
.super Landroidx/core/widget/a;
.source "SourceFile"


# instance fields
.field private final w:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/core/widget/a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/widget/i;->w:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Z
    .registers 9

    iget-object v0, p0, Landroidx/core/widget/i;->w:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    add-int v5, v4, v3

    const/4 v6, 0x1

    if-lez p1, :cond_29

    if-lt v5, v1, :cond_38

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_38

    return v2

    :cond_29
    if-gez p1, :cond_39

    if-gtz v4, :cond_38

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_38

    return v2

    :cond_38
    return v6

    :cond_39
    return v2
.end method

.method public j(II)V
    .registers 3

    iget-object p1, p0, Landroidx/core/widget/i;->w:Landroid/widget/ListView;

    invoke-static {p1, p2}, Landroidx/core/widget/j;->a(Landroid/widget/ListView;I)V

    return-void
.end method
