.class public final synthetic Lio/flutter/plugin/platform/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/platform/v;

.field public final synthetic b:Lr0/l$d;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/v;Lr0/l$d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/s;->a:Lio/flutter/plugin/platform/v;

    iput-object p2, p0, Lio/flutter/plugin/platform/s;->b:Lr0/l$d;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/platform/s;->a:Lio/flutter/plugin/platform/v;

    iget-object v1, p0, Lio/flutter/plugin/platform/s;->b:Lr0/l$d;

    invoke-static {v0, v1, p1, p2}, Lio/flutter/plugin/platform/v;->g(Lio/flutter/plugin/platform/v;Lr0/l$d;Landroid/view/View;Z)V

    return-void
.end method
