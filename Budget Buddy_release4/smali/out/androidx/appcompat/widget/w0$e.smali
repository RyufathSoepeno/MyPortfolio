.class Landroidx/appcompat/widget/w0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/w0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w0$e;->a:Landroidx/appcompat/widget/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_25

    iget-object p1, p0, Landroidx/appcompat/widget/w0$e;->a:Landroidx/appcompat/widget/w0;

    invoke-virtual {p1}, Landroidx/appcompat/widget/w0;->w()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Landroidx/appcompat/widget/w0$e;->a:Landroidx/appcompat/widget/w0;

    iget-object p1, p1, Landroidx/appcompat/widget/w0;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroidx/appcompat/widget/w0$e;->a:Landroidx/appcompat/widget/w0;

    iget-object p2, p1, Landroidx/appcompat/widget/w0;->F:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/w0;->A:Landroidx/appcompat/widget/w0$g;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/w0$e;->a:Landroidx/appcompat/widget/w0;

    iget-object p1, p1, Landroidx/appcompat/widget/w0;->A:Landroidx/appcompat/widget/w0$g;

    invoke-virtual {p1}, Landroidx/appcompat/widget/w0$g;->run()V

    :cond_25
    return-void
.end method
