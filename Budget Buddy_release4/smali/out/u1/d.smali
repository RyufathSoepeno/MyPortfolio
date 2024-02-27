.class public final Lu1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lj1/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/q<",
            "Lt1/c<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lu1/d$a;->e:Lu1/d$a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/q;

    sput-object v0, Lu1/d;->a:Lj1/q;

    return-void
.end method

.method public static final synthetic a()Lj1/q;
    .registers 1

    sget-object v0, Lu1/d;->a:Lj1/q;

    return-object v0
.end method
