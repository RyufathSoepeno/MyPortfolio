.class Landroidx/appcompat/widget/w0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/w0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w0$f;->e:Landroidx/appcompat/widget/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_40

    iget-object v1, p0, Landroidx/appcompat/widget/w0$f;->e:Landroidx/appcompat/widget/w0;

    iget-object v1, v1, Landroidx/appcompat/widget/w0;->J:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_40

    if-ltz v0, :cond_40

    iget-object v1, p0, Landroidx/appcompat/widget/w0$f;->e:Landroidx/appcompat/widget/w0;

    iget-object v1, v1, Landroidx/appcompat/widget/w0;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_40

    if-ltz p2, :cond_40

    iget-object v0, p0, Landroidx/appcompat/widget/w0$f;->e:Landroidx/appcompat/widget/w0;

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->J:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_40

    iget-object p1, p0, Landroidx/appcompat/widget/w0$f;->e:Landroidx/appcompat/widget/w0;

    iget-object p2, p1, Landroidx/appcompat/widget/w0;->F:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/w0;->A:Landroidx/appcompat/widget/w0$g;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4c

    :cond_40
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4c

    iget-object p1, p0, Landroidx/appcompat/widget/w0$f;->e:Landroidx/appcompat/widget/w0;

    iget-object p2, p1, Landroidx/appcompat/widget/w0;->F:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/w0;->A:Landroidx/appcompat/widget/w0$g;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    return p1
.end method
