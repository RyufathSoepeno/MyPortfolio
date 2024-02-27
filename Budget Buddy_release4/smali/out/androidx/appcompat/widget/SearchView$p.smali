.class Landroidx/appcompat/widget/SearchView$p;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "p"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$p;->e:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$p;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    iget v0, p0, Landroidx/appcompat/widget/SearchView$p;->e:I

    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_32

    if-eq v2, v4, :cond_20

    if-eq v2, v3, :cond_20

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1b

    goto :goto_3d

    :cond_1b
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    iput-boolean v5, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    goto :goto_2f

    :cond_20
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    if-eqz v2, :cond_2f

    iget-object v6, p0, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2f

    move v4, v2

    const/4 v2, 0x0

    goto :goto_3f

    :cond_2f
    :goto_2f
    move v4, v2

    :goto_30
    const/4 v2, 0x1

    goto :goto_3f

    :cond_32
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$p;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3d

    iput-boolean v4, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    goto :goto_30

    :cond_3d
    :goto_3d
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_3f
    if-eqz v4, :cond_6e

    if-eqz v2, :cond_5b

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5b

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    goto :goto_64

    :cond_5b
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    :goto_64
    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_6e
    return v5
.end method
