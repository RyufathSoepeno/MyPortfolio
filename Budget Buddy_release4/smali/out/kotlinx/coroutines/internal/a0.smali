.class public final Lkotlinx/coroutines/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    sget-object v0, La1/k;->e:La1/k$a;

    const-string v0, "kotlin.coroutines.jvm.internal.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception v0

    sget-object v1, La1/k;->e:La1/k$a;

    invoke-static {v0}, La1/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    invoke-static {v0}, La1/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_25

    :cond_23
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    :goto_25
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lkotlinx/coroutines/internal/a0;->a:Ljava/lang/String;

    :try_start_29
    const-class v0, Lkotlinx/coroutines/internal/a0;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_34

    goto :goto_3f

    :catchall_34
    move-exception v0

    sget-object v1, La1/k;->e:La1/k$a;

    invoke-static {v0}, La1/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3f
    invoke-static {v0}, La1/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_46

    goto :goto_48

    :cond_46
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    :goto_48
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lkotlinx/coroutines/internal/a0;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    return-object p0
.end method
