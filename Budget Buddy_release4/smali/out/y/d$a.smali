.class public final Ly/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/d;
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

    invoke-direct {p0}, Ly/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ly/e;)Ly/d;
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ly/d;-><init>(Ly/e;Lkotlin/jvm/internal/g;)V

    return-object v0
.end method
