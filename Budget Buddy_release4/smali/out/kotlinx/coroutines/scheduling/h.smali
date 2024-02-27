.class public abstract Lkotlinx/coroutines/scheduling/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:Lkotlinx/coroutines/scheduling/i;


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, Lkotlinx/coroutines/scheduling/l;->f:Lkotlinx/coroutines/scheduling/i;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/scheduling/h;-><init>(JLkotlinx/coroutines/scheduling/i;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/scheduling/i;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/h;->e:J

    iput-object p3, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/i;

    return-void
.end method
