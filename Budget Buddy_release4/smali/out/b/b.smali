.class public final Lb/b;
.super Lb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a<",
        "[",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lb/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lb/b;->a:Lb/b$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 3

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lb/b;->d(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Landroid/content/Context;Ljava/lang/Object;)Lb/a$a;
    .registers 3

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lb/b;->e(Landroid/content/Context;[Ljava/lang/String;)Lb/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b;->f(ILandroid/content/Intent;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lb/b;->a:Lb/b$a;

    invoke-virtual {p1, p2}, Lb/b$a;->a([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;[Ljava/lang/String;)Lb/a$a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lb/a$a<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1e

    new-instance p1, Lb/a$a;

    invoke-static {}, Lb1/x;->d()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a$a;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1e
    array-length v0, p2

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v0, :cond_34

    aget-object v4, p2, v3

    invoke-static {p1, v4}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    if-nez v4, :cond_31

    const/4 v1, 0x0

    goto :goto_34

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_34
    :goto_34
    if-eqz v1, :cond_65

    array-length p1, p2

    invoke-static {p1}, Lb1/x;->a(I)I

    move-result p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lm1/d;->a(II)I

    move-result p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length p1, p2

    :goto_47
    if-ge v2, p1, :cond_5f

    aget-object v1, p2, v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, La1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)La1/j;

    move-result-object v1

    invoke-virtual {v1}, La1/j;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, La1/j;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_5f
    new-instance p1, Lb/a$a;

    invoke-direct {p1, v0}, Lb/a$a;-><init>(Ljava/lang/Object;)V

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    :goto_66
    return-object p1
.end method

.method public f(ILandroid/content/Intent;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-static {}, Lb1/x;->d()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_8
    if-nez p2, :cond_f

    invoke-static {}, Lb1/x;->d()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_f
    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p2, :cond_49

    if-nez p1, :cond_20

    goto :goto_49

    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v1, :cond_3c

    aget v4, p2, v3

    if-nez v4, :cond_31

    const/4 v4, 0x1

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3c
    invoke-static {p1}, Lb1/b;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lb1/h;->y(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lb1/x;->g(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_49
    :goto_49
    invoke-static {}, Lb1/x;->d()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
