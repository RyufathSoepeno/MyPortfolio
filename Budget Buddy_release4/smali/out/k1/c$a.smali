.class public final Lk1/c$a;
.super Lk1/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk1/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .registers 2

    invoke-direct {p0}, Lk1/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    invoke-static {}, Lk1/c;->a()Lk1/c;

    move-result-object v0

    invoke-virtual {v0}, Lk1/c;->b()I

    move-result v0

    return v0
.end method
