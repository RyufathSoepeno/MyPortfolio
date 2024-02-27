.class public Ld0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld0/e;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ld0/e;->d()Lb0/d0;

    move-result-object p0

    if-eqz p0, :cond_1e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lb0/d0;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sql"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb0/d0;->b()Ljava/util/List;

    move-result-object p0

    const-string v1, "arguments"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return-object v0
.end method
