.class final Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc1/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lu1/b;

.field private static final f:Lc1/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu1/b;

    invoke-direct {v0}, Lu1/b;-><init>()V

    sput-object v0, Lu1/b;->e:Lu1/b;

    sget-object v0, Lc1/h;->e:Lc1/h;

    sput-object v0, Lu1/b;->f:Lc1/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lc1/g;
    .registers 2

    sget-object v0, Lu1/b;->f:Lc1/g;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
