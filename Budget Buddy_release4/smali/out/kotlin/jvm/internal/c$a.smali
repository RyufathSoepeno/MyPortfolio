.class Lkotlin/jvm/internal/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final e:Lkotlin/jvm/internal/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/jvm/internal/c$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/c$a;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/c$a;->e:Lkotlin/jvm/internal/c$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lkotlin/jvm/internal/c$a;
    .registers 1

    sget-object v0, Lkotlin/jvm/internal/c$a;->e:Lkotlin/jvm/internal/c$a;

    return-object v0
.end method
