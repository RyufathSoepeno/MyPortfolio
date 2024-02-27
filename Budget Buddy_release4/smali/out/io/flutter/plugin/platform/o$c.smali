.class Lio/flutter/plugin/platform/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/o;->k(Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/view/View$OnFocusChangeListener;

.field final synthetic f:Lio/flutter/plugin/platform/o;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/o;Landroid/view/View$OnFocusChangeListener;)V
    .registers 3

    iput-object p1, p0, Lio/flutter/plugin/platform/o$c;->f:Lio/flutter/plugin/platform/o;

    iput-object p2, p0, Lio/flutter/plugin/platform/o$c;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lio/flutter/plugin/platform/o$c;->e:Landroid/view/View$OnFocusChangeListener;

    iget-object p2, p0, Lio/flutter/plugin/platform/o$c;->f:Lio/flutter/plugin/platform/o;

    invoke-static {p2}, Lz0/i;->d(Landroid/view/View;)Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method
