.class public final synthetic Landroidx/core/view/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/l1;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/l1;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/h1;->a:Landroidx/core/view/l1;

    iput-object p2, p0, Landroidx/core/view/h1;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/view/h1;->a:Landroidx/core/view/l1;

    iget-object v1, p0, Landroidx/core/view/h1;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/i1;->a(Landroidx/core/view/l1;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
