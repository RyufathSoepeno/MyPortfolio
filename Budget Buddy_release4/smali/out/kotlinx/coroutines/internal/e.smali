.class public final Lkotlinx/coroutines/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/h0;


# instance fields
.field private final e:Lc1/g;


# direct methods
.method public constructor <init>(Lc1/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->e:Lc1/g;

    return-void
.end method


# virtual methods
.method public f()Lc1/g;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->e:Lc1/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineScope(coroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->f()Lc1/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
