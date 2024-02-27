.class Lq0/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lq0/a$f;


# direct methods
.method constructor <init>(Lq0/a$f;)V
    .registers 2

    iput-object p1, p0, Lq0/a$f$a;->e:Lq0/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lq0/a$f$a;->e:Lq0/a$f;

    invoke-static {v0}, Lq0/a$f;->e(Lq0/a$f;)Lio/flutter/view/r$a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lq0/a$f$a;->e:Lq0/a$f;

    invoke-static {v0}, Lq0/a$f;->e(Lq0/a$f;)Lio/flutter/view/r$a;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/view/r$a;->a()V

    :cond_11
    return-void
.end method
