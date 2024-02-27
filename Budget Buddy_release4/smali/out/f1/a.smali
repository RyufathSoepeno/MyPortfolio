.class public Lf1/a;
.super Le1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Le1/a;-><init>()V

    return-void
.end method

.method private final c(I)Z
    .registers 3

    sget-object v0, Lf1/a$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lf1/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_16
    invoke-super {p0, p1, p2}, Le1/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_19
    return-void
.end method
