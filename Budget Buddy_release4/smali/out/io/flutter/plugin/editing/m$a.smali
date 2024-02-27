.class Lio/flutter/plugin/editing/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/m;-><init>(Landroid/view/View;Lr0/q;Lio/flutter/plugin/platform/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/editing/m;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/m;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/editing/m$a;->a:Lio/flutter/plugin/editing/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    if-nez p1, :cond_7

    iget-object p1, p0, Lio/flutter/plugin/editing/m$a;->a:Lio/flutter/plugin/editing/m;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/m;->z()V

    :cond_7
    return-void
.end method
