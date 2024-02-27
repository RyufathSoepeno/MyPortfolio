.class final Lp1/f$a;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lj1/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp1/f;->b(Ljava/lang/String;)Lj1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Lj1/l<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lp1/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp1/f$a;

    invoke-direct {v0}, Lp1/f$a;-><init>()V

    sput-object v0, Lp1/f$a;->e:Lp1/f$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lp1/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
