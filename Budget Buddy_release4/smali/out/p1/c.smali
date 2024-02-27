.class final Lp1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo1/b<",
        "Lm1/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lj1/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "La1/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILj1/p;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lj1/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "La1/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/c;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lp1/c;->b:I

    iput p3, p0, Lp1/c;->c:I

    iput-object p4, p0, Lp1/c;->d:Lj1/p;

    return-void
.end method

.method public static final synthetic a(Lp1/c;)Lj1/p;
    .registers 1

    iget-object p0, p0, Lp1/c;->d:Lj1/p;

    return-object p0
.end method

.method public static final synthetic b(Lp1/c;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lp1/c;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lp1/c;)I
    .registers 1

    iget p0, p0, Lp1/c;->c:I

    return p0
.end method

.method public static final synthetic d(Lp1/c;)I
    .registers 1

    iget p0, p0, Lp1/c;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lm1/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lp1/c$a;

    invoke-direct {v0, p0}, Lp1/c$a;-><init>(Lp1/c;)V

    return-object v0
.end method
