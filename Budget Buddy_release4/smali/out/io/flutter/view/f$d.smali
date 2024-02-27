.class Lio/flutter/view/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/f;-><init>(Landroid/view/View;Lr0/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic b:Lio/flutter/view/f;


# direct methods
.method constructor <init>(Lio/flutter/view/f;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 3

    iput-object p1, p0, Lio/flutter/view/f$d;->b:Lio/flutter/view/f;

    iput-object p2, p0, Lio/flutter/view/f$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f$d;->b:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->k(Lio/flutter/view/f;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_16

    iget-object v0, p0, Lio/flutter/view/f$d;->b:Lio/flutter/view/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/f;->p(Lio/flutter/view/f;Z)V

    iget-object v0, p0, Lio/flutter/view/f$d;->b:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->h(Lio/flutter/view/f;)V

    :cond_16
    iget-object v0, p0, Lio/flutter/view/f$d;->b:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->s(Lio/flutter/view/f;)Lio/flutter/view/f$k;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lio/flutter/view/f$d;->b:Lio/flutter/view/f;

    invoke-static {v0}, Lio/flutter/view/f;->s(Lio/flutter/view/f;)Lio/flutter/view/f$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/f$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lio/flutter/view/f$k;->a(ZZ)V

    :cond_2d
    return-void
.end method
