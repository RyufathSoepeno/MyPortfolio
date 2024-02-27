.class Landroidx/appcompat/widget/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/w;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/w;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w$b;->e:Landroidx/appcompat/widget/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w$b;->e:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->getInternalPopup()Landroidx/appcompat/widget/w$g;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/w$g;->c()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/w$b;->e:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->b()V

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/w$b;->e:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1c
    return-void
.end method
