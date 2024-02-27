.class public Landroidx/appcompat/widget/b1$a;
.super Landroidx/appcompat/widget/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final s:I

.field final t:I

.field private u:Landroidx/appcompat/widget/x0;

.field private v:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/p0;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/16 v0, 0x15

    const/16 v1, 0x16

    if-ne p2, p1, :cond_1b

    iput v0, p0, Landroidx/appcompat/widget/b1$a;->s:I

    iput v1, p0, Landroidx/appcompat/widget/b1$a;->t:I

    goto :goto_1f

    :cond_1b
    iput v1, p0, Landroidx/appcompat/widget/b1$a;->s:I

    iput v0, p0, Landroidx/appcompat/widget/b1$a;->t:I

    :goto_1f
    return-void
.end method


# virtual methods
.method public bridge synthetic d(IIIII)I
    .registers 6

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/p0;->d(IIIII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic e(Landroid/view/MotionEvent;I)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/p0;->e(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasFocus()Z
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/p0;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/p0;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/p0;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/p0;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/widget/b1$a;->u:Landroidx/appcompat/widget/x0;

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    check-cast v0, Landroidx/appcompat/view/menu/d;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_41

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_41

    sub-int/2addr v3, v1

    if-ltz v3, :cond_41

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_41

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/d;->c(I)Landroidx/appcompat/view/menu/g;

    move-result-object v2

    :cond_41
    iget-object v1, p0, Landroidx/appcompat/widget/b1$a;->v:Landroid/view/MenuItem;

    if-eq v1, v2, :cond_59

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d;->b()Landroidx/appcompat/view/menu/e;

    move-result-object v0

    if-eqz v1, :cond_50

    iget-object v3, p0, Landroidx/appcompat/widget/b1$a;->u:Landroidx/appcompat/widget/x0;

    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/x0;->e(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)V

    :cond_50
    iput-object v2, p0, Landroidx/appcompat/widget/b1$a;->v:Landroid/view/MenuItem;

    if-eqz v2, :cond_59

    iget-object v1, p0, Landroidx/appcompat/widget/b1$a;->u:Landroidx/appcompat/widget/x0;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/widget/x0;->b(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)V

    :cond_59
    invoke-super {p0, p1}, Landroidx/appcompat/widget/p0;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget v2, p0, Landroidx/appcompat/widget/b1$a;->s:I

    if-ne p1, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_28
    return v1

    :cond_29
    if-eqz v0, :cond_42

    iget v0, p0, Landroidx/appcompat/widget/b1$a;->t:I

    if-ne p1, v0, :cond_42

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/d;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d;->b()Landroidx/appcompat/view/menu/e;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/e;->e(Z)V

    return v1

    :cond_42
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/p0;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setHoverListener(Landroidx/appcompat/widget/x0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/b1$a;->u:Landroidx/appcompat/widget/x0;

    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/p0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
