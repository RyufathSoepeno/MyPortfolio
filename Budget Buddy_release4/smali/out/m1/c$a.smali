.class public final Lm1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/c;
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

    invoke-direct {p0}, Lm1/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lm1/c;
    .registers 2

    invoke-static {}, Lm1/c;->e()Lm1/c;

    move-result-object v0

    return-object v0
.end method
