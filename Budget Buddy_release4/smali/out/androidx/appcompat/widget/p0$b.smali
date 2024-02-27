.class Landroidx/appcompat/widget/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/p0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/p0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/p0$b;->e:Landroidx/appcompat/widget/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/p0$b;->e:Landroidx/appcompat/widget/p0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/p0;->r:Landroidx/appcompat/widget/p0$b;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/p0$b;->e:Landroidx/appcompat/widget/p0;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/p0$b;->e:Landroidx/appcompat/widget/p0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/p0;->r:Landroidx/appcompat/widget/p0$b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/p0;->drawableStateChanged()V

    return-void
.end method
