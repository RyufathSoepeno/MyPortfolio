.class public final Lq1/d0$a;
.super Lc1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc1/b<",
        "Lc1/e;",
        "Lq1/d0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    sget-object v0, Lc1/e;->b:Lc1/e$b;

    sget-object v1, Lq1/d0$a$a;->e:Lq1/d0$a$a;

    invoke-direct {p0, v0, v1}, Lc1/b;-><init>(Lc1/g$c;Lj1/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .registers 2

    invoke-direct {p0}, Lq1/d0$a;-><init>()V

    return-void
.end method
