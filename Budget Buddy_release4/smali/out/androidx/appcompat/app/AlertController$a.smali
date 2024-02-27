.class Landroidx/appcompat/app/AlertController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$a;->e:Landroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->e:Landroidx/appcompat/app/AlertController;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;

    if-eqz v1, :cond_f

    :goto_a
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_26

    :cond_f
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    if-ne p1, v1, :cond_18

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;

    if-eqz v1, :cond_18

    goto :goto_a

    :cond_18
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    if-ne p1, v1, :cond_25

    iget-object p1, v0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;

    if-eqz p1, :cond_25

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2b
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$a;->e:Landroidx/appcompat/app/AlertController;

    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->R:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->b:Ld/i;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
