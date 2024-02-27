.class public final Ls1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/i$c;,
        Ls1/i$a;,
        Ls1/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ls1/i$b;

.field private static final b:Ls1/i$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ls1/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/i$b;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ls1/i;->a:Ls1/i$b;

    new-instance v0, Ls1/i$c;

    invoke-direct {v0}, Ls1/i$c;-><init>()V

    sput-object v0, Ls1/i;->b:Ls1/i$c;

    return-void
.end method

.method public static final synthetic a()Ls1/i$c;
    .registers 1

    sget-object v0, Ls1/i;->b:Ls1/i$c;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method
