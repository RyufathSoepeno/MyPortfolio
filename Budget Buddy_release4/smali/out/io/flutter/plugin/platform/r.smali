.class public final synthetic Lio/flutter/plugin/platform/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/plugin/platform/v;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/r;->e:Lio/flutter/plugin/platform/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/platform/r;->e:Lio/flutter/plugin/platform/v;

    invoke-static {v0}, Lio/flutter/plugin/platform/v;->e(Lio/flutter/plugin/platform/v;)V

    return-void
.end method
