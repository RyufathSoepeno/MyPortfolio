.class final Lkotlinx/coroutines/internal/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc1/g;

.field private final b:[Ljava/lang/Object;

.field private final c:[Lq1/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lq1/c2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lc1/g;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/i0;->a:Lc1/g;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/i0;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lq1/c2;

    iput-object p1, p0, Lkotlinx/coroutines/internal/i0;->c:[Lq1/c2;

    return-void
.end method


# virtual methods
.method public final a(Lq1/c2;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/c2<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/i0;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/i0;->d:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lkotlinx/coroutines/internal/i0;->c:[Lq1/c2;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/i0;->d:I

    aput-object p1, p2, v1

    return-void
.end method

.method public final b(Lc1/g;)V
    .registers 6

    iget-object v0, p0, Lkotlinx/coroutines/internal/i0;->c:[Lq1/c2;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    :goto_7
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lkotlinx/coroutines/internal/i0;->c:[Lq1/c2;

    aget-object v2, v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lkotlinx/coroutines/internal/i0;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p1, v0}, Lq1/c2;->g(Lc1/g;Ljava/lang/Object;)V

    if-gez v1, :cond_1a

    goto :goto_1c

    :cond_1a
    move v0, v1

    goto :goto_7

    :cond_1c
    :goto_1c
    return-void
.end method
