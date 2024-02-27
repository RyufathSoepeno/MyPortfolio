.class final Lt1/a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/a;->a(Lt1/c;Lc1/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.AbstractFlow"
    f = "Flow.kt"
    l = {
        0xe6
    }
    m = "collect"
.end annotation


# instance fields
.field e:Ljava/lang/Object;

.field synthetic f:Ljava/lang/Object;

.field final synthetic g:Lt1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:I


# direct methods
.method constructor <init>(Lt1/a;Lc1/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/a<",
            "TT;>;",
            "Lc1/d<",
            "-",
            "Lt1/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt1/a$a;->g:Lt1/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lc1/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lt1/a$a;->f:Ljava/lang/Object;

    iget p1, p0, Lt1/a$a;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lt1/a$a;->h:I

    iget-object p1, p0, Lt1/a$a;->g:Lt1/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lt1/a;->a(Lt1/c;Lc1/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
