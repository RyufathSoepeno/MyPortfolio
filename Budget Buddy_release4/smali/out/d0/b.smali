.class public abstract Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    invoke-interface {p0, p1}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private l()Ljava/lang/String;
    .registers 2

    const-string v0, "sql"

    invoke-interface {p0, v0}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "arguments"

    invoke-interface {p0, v0}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public d()Lb0/d0;
    .registers 4

    new-instance v0, Lb0/d0;

    invoke-direct {p0}, Ld0/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Ld0/b;->m()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb0/d0;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public e()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "noResult"

    invoke-interface {p0, v1}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/Boolean;
    .registers 2

    const-string v0, "inTransaction"

    invoke-direct {p0, v0}, Ld0/b;->j(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .registers 2

    const-string v0, "transactionId"

    invoke-interface {p0, v0}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public h()Z
    .registers 2

    const-string v0, "transactionId"

    invoke-interface {p0, v0}, Ld0/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ld0/b;->g()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public k()Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "continueOnError"

    invoke-interface {p0, v1}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ld0/e;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ld0/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ld0/b;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
