.class public final synthetic Lio/flutter/plugin/platform/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/plugin/platform/v$a;

.field public final synthetic f:Lio/flutter/plugin/platform/w;

.field public final synthetic g:F

.field public final synthetic h:Lr0/l$b;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/v$a;Lio/flutter/plugin/platform/w;FLr0/l$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/u;->e:Lio/flutter/plugin/platform/v$a;

    iput-object p2, p0, Lio/flutter/plugin/platform/u;->f:Lio/flutter/plugin/platform/w;

    iput p3, p0, Lio/flutter/plugin/platform/u;->g:F

    iput-object p4, p0, Lio/flutter/plugin/platform/u;->h:Lr0/l$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/platform/u;->e:Lio/flutter/plugin/platform/v$a;

    iget-object v1, p0, Lio/flutter/plugin/platform/u;->f:Lio/flutter/plugin/platform/w;

    iget v2, p0, Lio/flutter/plugin/platform/u;->g:F

    iget-object v3, p0, Lio/flutter/plugin/platform/u;->h:Lr0/l$b;

    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugin/platform/v$a;->j(Lio/flutter/plugin/platform/v$a;Lio/flutter/plugin/platform/w;FLr0/l$b;)V

    return-void
.end method
