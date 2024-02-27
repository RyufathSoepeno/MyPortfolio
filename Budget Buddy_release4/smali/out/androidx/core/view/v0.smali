.class public final synthetic Landroidx/core/view/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/h0$q;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/h0$q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/v0;->a:Landroidx/core/view/h0$q;

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroidx/core/view/v0;->a:Landroidx/core/view/h0$q;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/h0$q;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
