.class Lio/flutter/view/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/f;


# direct methods
.method constructor <init>(Lio/flutter/view/f;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->k(Lio/flutter/view/f;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    if-eqz p1, :cond_24

    invoke-static {v0}, Lio/flutter/view/f;->m(Lio/flutter/view/f;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v1}, Lio/flutter/view/f;->l(Lio/flutter/view/f;)Lr0/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr0/a;->g(Lr0/a$b;)V

    iget-object v0, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->m(Lio/flutter/view/f;)Lr0/a;

    move-result-object v0

    invoke-virtual {v0}, Lr0/a;->e()V

    goto :goto_3b

    :cond_24
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/f;->p(Lio/flutter/view/f;Z)V

    iget-object v0, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->m(Lio/flutter/view/f;)Lr0/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/a;->g(Lr0/a$b;)V

    iget-object v0, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->m(Lio/flutter/view/f;)Lr0/a;

    move-result-object v0

    invoke-virtual {v0}, Lr0/a;->d()V

    :goto_3b
    iget-object v0, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->s(Lio/flutter/view/f;)Lio/flutter/view/f$k;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->s(Lio/flutter/view/f;)Lio/flutter/view/f$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/f$b;->a:Lio/flutter/view/f;

    invoke-static {v1}, Lio/flutter/view/f;->t(Lio/flutter/view/f;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/flutter/view/f$k;->a(ZZ)V

    :cond_56
    return-void
.end method
