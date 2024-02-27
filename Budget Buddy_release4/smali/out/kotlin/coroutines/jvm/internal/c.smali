.class public final Lkotlin/coroutines/jvm/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc1/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lkotlin/coroutines/jvm/internal/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/coroutines/jvm/internal/c;

    invoke-direct {v0}, Lkotlin/coroutines/jvm/internal/c;-><init>()V

    sput-object v0, Lkotlin/coroutines/jvm/internal/c;->e:Lkotlin/coroutines/jvm/internal/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lc1/g;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This continuation is already complete"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This continuation is already complete"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "This continuation is already complete"

    return-object v0
.end method
