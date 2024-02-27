.class public Lio/flutter/embedding/engine/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lf0/a$b;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/flutter/plugin/platform/v;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/d$b;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/d$b;->g:Z

    iput-object p1, p0, Lio/flutter/embedding/engine/d$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lio/flutter/embedding/engine/d$b;->f:Z

    return v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/d$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public c()Lf0/a$b;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/d$b;->b:Lf0/a$b;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/embedding/engine/d$b;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/d$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lio/flutter/plugin/platform/v;
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/d$b;->e:Lio/flutter/plugin/platform/v;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lio/flutter/embedding/engine/d$b;->g:Z

    return v0
.end method

.method public h(Z)Lio/flutter/embedding/engine/d$b;
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/engine/d$b;->f:Z

    return-object p0
.end method

.method public i(Lf0/a$b;)Lio/flutter/embedding/engine/d$b;
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/engine/d$b;->b:Lf0/a$b;

    return-object p0
.end method

.method public j(Ljava/util/List;)Lio/flutter/embedding/engine/d$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/engine/d$b;"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/engine/d$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lio/flutter/embedding/engine/d$b;
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/engine/d$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public l(Z)Lio/flutter/embedding/engine/d$b;
    .registers 2

    iput-boolean p1, p0, Lio/flutter/embedding/engine/d$b;->g:Z

    return-object p0
.end method
