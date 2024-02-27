.class public final Lq1/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Lq1/o0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/c0;->e(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lq1/n0;->a:Z

    invoke-static {}, Lq1/n0;->b()Lq1/o0;

    move-result-object v0

    sput-object v0, Lq1/n0;->b:Lq1/o0;

    return-void
.end method

.method public static final a()Lq1/o0;
    .registers 1

    sget-object v0, Lq1/n0;->b:Lq1/o0;

    return-object v0
.end method

.method private static final b()Lq1/o0;
    .registers 2

    sget-boolean v0, Lq1/n0;->a:Z

    if-nez v0, :cond_7

    sget-object v0, Lq1/m0;->k:Lq1/m0;

    return-object v0

    :cond_7
    invoke-static {}, Lq1/u0;->c()Lq1/w1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/t;->c(Lq1/w1;)Z

    move-result v1

    if-nez v1, :cond_19

    instance-of v1, v0, Lq1/o0;

    if-nez v1, :cond_16

    goto :goto_19

    :cond_16
    check-cast v0, Lq1/o0;

    goto :goto_1b

    :cond_19
    :goto_19
    sget-object v0, Lq1/m0;->k:Lq1/m0;

    :goto_1b
    return-object v0
.end method
