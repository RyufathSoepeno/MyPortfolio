.class Lio/flutter/embedding/engine/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/a;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/a;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/engine/a$a;->a:Lio/flutter/embedding/engine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "FlutterEngine"

    const-string v1, "onPreEngineRestart()"

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a$a;->a:Lio/flutter/embedding/engine/a;

    invoke-static {v0}, Lio/flutter/embedding/engine/a;->b(Lio/flutter/embedding/engine/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/a$b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/a$b;->b()V

    goto :goto_11

    :cond_21
    iget-object v0, p0, Lio/flutter/embedding/engine/a$a;->a:Lio/flutter/embedding/engine/a;

    invoke-static {v0}, Lio/flutter/embedding/engine/a;->c(Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/v;->m0()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a$a;->a:Lio/flutter/embedding/engine/a;

    invoke-static {v0}, Lio/flutter/embedding/engine/a;->d(Lio/flutter/embedding/engine/a;)Lr0/m;

    move-result-object v0

    invoke-virtual {v0}, Lr0/m;->g()V

    return-void
.end method
