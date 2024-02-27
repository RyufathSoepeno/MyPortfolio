.class final Lq1/c0$a;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/c0;->a(Lc1/g;Lc1/g;Z)Lc1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/p<",
        "Lc1/g;",
        "Lc1/g$b;",
        "Lc1/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lq1/c0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/c0$a;

    invoke-direct {v0}, Lq1/c0$a;-><init>()V

    sput-object v0, Lq1/c0$a;->e:Lq1/c0$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc1/g;Lc1/g$b;)Lc1/g;
    .registers 4

    instance-of v0, p2, Lq1/b0;

    if-eqz v0, :cond_f

    check-cast p2, Lq1/b0;

    invoke-interface {p2}, Lq1/b0;->h()Lq1/b0;

    move-result-object p2

    invoke-interface {p1, p2}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-interface {p1, p2}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lc1/g;

    check-cast p2, Lc1/g$b;

    invoke-virtual {p0, p1, p2}, Lq1/c0$a;->a(Lc1/g;Lc1/g$b;)Lc1/g;

    move-result-object p1

    return-object p1
.end method
