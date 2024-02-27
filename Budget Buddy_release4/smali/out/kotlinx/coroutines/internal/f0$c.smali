.class final Lkotlinx/coroutines/internal/f0$c;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/p<",
        "Lkotlinx/coroutines/internal/i0;",
        "Lc1/g$b;",
        "Lkotlinx/coroutines/internal/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/internal/f0$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/f0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/f0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/f0$c;->e:Lkotlinx/coroutines/internal/f0$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/i0;Lc1/g$b;)Lkotlinx/coroutines/internal/i0;
    .registers 4

    instance-of v0, p2, Lq1/c2;

    if-eqz v0, :cond_f

    check-cast p2, Lq1/c2;

    iget-object v0, p1, Lkotlinx/coroutines/internal/i0;->a:Lc1/g;

    invoke-interface {p2, v0}, Lq1/c2;->e(Lc1/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/i0;->a(Lq1/c2;Ljava/lang/Object;)V

    :cond_f
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/internal/i0;

    check-cast p2, Lc1/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/f0$c;->a(Lkotlinx/coroutines/internal/i0;Lc1/g$b;)Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1
.end method
