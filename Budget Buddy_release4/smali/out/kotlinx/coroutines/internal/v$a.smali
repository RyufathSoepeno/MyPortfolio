.class final Lkotlinx/coroutines/internal/v$a;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/v;->a(Lj1/l;Ljava/lang/Object;Lc1/g;)Lj1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/l<",
        "Ljava/lang/Throwable;",
        "La1/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lj1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/l<",
            "TE;",
            "La1/q;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic g:Lc1/g;


# direct methods
.method constructor <init>(Lj1/l;Ljava/lang/Object;Lc1/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/l<",
            "-TE;",
            "La1/q;",
            ">;TE;",
            "Lc1/g;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/v$a;->e:Lj1/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/v$a;->f:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/v$a;->g:Lc1/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object p1, p0, Lkotlinx/coroutines/internal/v$a;->e:Lj1/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/v$a;->f:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/internal/v$a;->g:Lc1/g;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/internal/v;->b(Lj1/l;Ljava/lang/Object;Lc1/g;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/v$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, La1/q;->a:La1/q;

    return-object p1
.end method
