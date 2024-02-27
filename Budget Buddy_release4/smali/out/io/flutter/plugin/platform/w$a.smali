.class Lio/flutter/plugin/platform/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/w;->h(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/view/View;

.field final synthetic f:Ljava/lang/Runnable;

.field final synthetic g:Lio/flutter/plugin/platform/w;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/w;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lio/flutter/plugin/platform/w$a;->g:Lio/flutter/plugin/platform/w;

    iput-object p2, p0, Lio/flutter/plugin/platform/w$a;->e:Landroid/view/View;

    iput-object p3, p0, Lio/flutter/plugin/platform/w$a;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lio/flutter/plugin/platform/w$a;->e:Landroid/view/View;

    new-instance v0, Lio/flutter/plugin/platform/w$a$a;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/w$a$a;-><init>(Lio/flutter/plugin/platform/w$a;)V

    invoke-static {p1, v0}, Lio/flutter/plugin/platform/w$b;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/w$a;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
