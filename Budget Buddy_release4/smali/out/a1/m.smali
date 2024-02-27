.class final La1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La1/e<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private e:Lj1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj1/a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/a<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/m;->e:Lj1/a;

    sget-object p1, La1/o;->a:La1/o;

    iput-object p1, p0, La1/m;->f:Ljava/lang/Object;

    if-nez p2, :cond_11

    move-object p2, p0

    :cond_11
    iput-object p2, p0, La1/m;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lj1/a;Ljava/lang/Object;ILkotlin/jvm/internal/g;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, La1/m;-><init>(Lj1/a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget-object v0, p0, La1/m;->f:Ljava/lang/Object;

    sget-object v1, La1/o;->a:La1/o;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, La1/m;->f:Ljava/lang/Object;

    sget-object v1, La1/o;->a:La1/o;

    if-eq v0, v1, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, La1/m;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v2, p0, La1/m;->f:Ljava/lang/Object;

    if-eq v2, v1, :cond_f

    goto :goto_1d

    :cond_f
    iget-object v1, p0, La1/m;->e:Lj1/a;

    invoke-static {v1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lj1/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, La1/m;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, La1/m;->e:Lj1/a;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    :goto_1d
    monitor-exit v0

    return-object v2

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, La1/m;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, La1/m;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "Lazy value not initialized yet."

    :goto_11
    return-object v0
.end method
