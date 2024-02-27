.class public final Ls1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Ls1/f$a;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ls1/f$a;

    invoke-direct {v0}, Ls1/f$a;-><init>()V

    sput-object v0, Ls1/f$a;->a:Ls1/f$a;

    const-string v0, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v1, 0x40

    const/4 v2, 0x1

    const v3, 0x7ffffffe

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/internal/c0;->b(Ljava/lang/String;III)I

    move-result v0

    sput v0, Ls1/f$a;->b:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    sget v0, Ls1/f$a;->b:I

    return v0
.end method
