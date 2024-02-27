.class Landroidx/appcompat/view/menu/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/view/menu/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/l;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/l$b;->e:Landroidx/appcompat/view/menu/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/l$b;->e:Landroidx/appcompat/view/menu/l;

    iget-object v0, v0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/appcompat/view/menu/l$b;->e:Landroidx/appcompat/view/menu/l;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    :cond_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/l$b;->e:Landroidx/appcompat/view/menu/l;

    iget-object v1, v0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Landroidx/appcompat/view/menu/l;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1d
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
