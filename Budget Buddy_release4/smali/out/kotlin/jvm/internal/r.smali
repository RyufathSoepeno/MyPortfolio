.class public Lkotlin/jvm/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/jvm/internal/s;

.field private static final b:[Ln1/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/s;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    goto :goto_10

    :catch_f
    nop

    :goto_10
    if-eqz v0, :cond_13

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlin/jvm/internal/s;

    invoke-direct {v0}, Lkotlin/jvm/internal/s;-><init>()V

    :goto_18
    sput-object v0, Lkotlin/jvm/internal/r;->a:Lkotlin/jvm/internal/s;

    const/4 v0, 0x0

    new-array v0, v0, [Ln1/c;

    sput-object v0, Lkotlin/jvm/internal/r;->b:[Ln1/c;

    return-void
.end method

.method public static a(Lkotlin/jvm/internal/i;)Ln1/e;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/r;->a:Lkotlin/jvm/internal/s;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/s;->a(Lkotlin/jvm/internal/i;)Ln1/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Ln1/c;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/r;->a:Lkotlin/jvm/internal/s;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/s;->b(Ljava/lang/Class;)Ln1/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Ln1/d;
    .registers 3

    sget-object v0, Lkotlin/jvm/internal/r;->a:Lkotlin/jvm/internal/s;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/s;->c(Ljava/lang/Class;Ljava/lang/String;)Ln1/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lkotlin/jvm/internal/n;)Ln1/f;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/r;->a:Lkotlin/jvm/internal/s;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/s;->d(Lkotlin/jvm/internal/n;)Ln1/f;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lkotlin/jvm/internal/h;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/r;->a:Lkotlin/jvm/internal/s;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/s;->e(Lkotlin/jvm/internal/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lkotlin/jvm/internal/l;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/r;->a:Lkotlin/jvm/internal/s;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/s;->f(Lkotlin/jvm/internal/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
