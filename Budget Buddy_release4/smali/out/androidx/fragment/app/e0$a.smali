.class Landroidx/fragment/app/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/e0;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroidx/fragment/app/e0;


# direct methods
.method constructor <init>(Landroidx/fragment/app/e0;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/e0$a;->f:Landroidx/fragment/app/e0;

    iput-object p2, p0, Landroidx/fragment/app/e0$a;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Landroidx/fragment/app/e0$a;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Landroidx/fragment/app/e0$a;->e:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/h0;->E(Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
