.class final synthetic Lu1/d$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final e:Lu1/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu1/d$a;

    invoke-direct {v0}, Lu1/d$a;-><init>()V

    sput-object v0, Lu1/d$a;->e:Lu1/d$a;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Lt1/c;

    const/4 v1, 0x3

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lt1/c;Ljava/lang/Object;Lc1/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/c<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lt1/c;->emit(Ljava/lang/Object;Lc1/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lt1/c;

    check-cast p3, Lc1/d;

    invoke-virtual {p0, p1, p2, p3}, Lu1/d$a;->b(Lt1/c;Ljava/lang/Object;Lc1/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
