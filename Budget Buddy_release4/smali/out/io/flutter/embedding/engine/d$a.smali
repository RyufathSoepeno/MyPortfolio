.class Lio/flutter/embedding/engine/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/d;->a(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/a;

.field final synthetic b:Lio/flutter/embedding/engine/d;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/d;Lio/flutter/embedding/engine/a;)V
    .registers 3

    iput-object p1, p0, Lio/flutter/embedding/engine/d$a;->b:Lio/flutter/embedding/engine/d;

    iput-object p2, p0, Lio/flutter/embedding/engine/d$a;->a:Lio/flutter/embedding/engine/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/d$a;->b:Lio/flutter/embedding/engine/d;

    iget-object v0, v0, Lio/flutter/embedding/engine/d;->a:Ljava/util/List;

    iget-object v1, p0, Lio/flutter/embedding/engine/d$a;->a:Lio/flutter/embedding/engine/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
