.class Landroidx/core/view/i1$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/i1;->i(Landroid/view/View;Landroidx/core/view/j1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/j1;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/view/i1;


# direct methods
.method constructor <init>(Landroidx/core/view/i1;Landroidx/core/view/j1;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Landroidx/core/view/i1$a;->c:Landroidx/core/view/i1;

    iput-object p2, p0, Landroidx/core/view/i1$a;->a:Landroidx/core/view/j1;

    iput-object p3, p0, Landroidx/core/view/i1$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroidx/core/view/i1$a;->a:Landroidx/core/view/j1;

    iget-object v0, p0, Landroidx/core/view/i1$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/j1;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroidx/core/view/i1$a;->a:Landroidx/core/view/j1;

    iget-object v0, p0, Landroidx/core/view/i1$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/j1;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroidx/core/view/i1$a;->a:Landroidx/core/view/j1;

    iget-object v0, p0, Landroidx/core/view/i1$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/j1;->c(Landroid/view/View;)V

    return-void
.end method
