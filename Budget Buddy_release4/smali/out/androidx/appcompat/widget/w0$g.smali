.class Landroidx/appcompat/widget/w0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/w0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w0$g;->e:Landroidx/appcompat/widget/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/w0$g;->e:Landroidx/appcompat/widget/w0;

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->g:Landroidx/appcompat/widget/p0;

    if-eqz v0, :cond_37

    invoke-static {v0}, Landroidx/core/view/h0;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroidx/appcompat/widget/w0$g;->e:Landroidx/appcompat/widget/w0;

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->g:Landroidx/appcompat/widget/p0;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/w0$g;->e:Landroidx/appcompat/widget/w0;

    iget-object v1, v1, Landroidx/appcompat/widget/w0;->g:Landroidx/appcompat/widget/p0;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_37

    iget-object v0, p0, Landroidx/appcompat/widget/w0$g;->e:Landroidx/appcompat/widget/w0;

    iget-object v0, v0, Landroidx/appcompat/widget/w0;->g:Landroidx/appcompat/widget/p0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/w0$g;->e:Landroidx/appcompat/widget/w0;

    iget v2, v1, Landroidx/appcompat/widget/w0;->s:I

    if-gt v0, v2, :cond_37

    iget-object v0, v1, Landroidx/appcompat/widget/w0;->J:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/w0$g;->e:Landroidx/appcompat/widget/w0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->a()V

    :cond_37
    return-void
.end method
