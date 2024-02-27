.class public final Lm1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .registers 2

    invoke-direct {p0}, Lm1/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lm1/a;
    .registers 5

    new-instance v0, Lm1/a;

    invoke-direct {v0, p1, p2, p3}, Lm1/a;-><init>(III)V

    return-object v0
.end method
