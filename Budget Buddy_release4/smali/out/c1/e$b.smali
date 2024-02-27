.class public final Lc1/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc1/g$c<",
        "Lc1/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic e:Lc1/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc1/e$b;

    invoke-direct {v0}, Lc1/e$b;-><init>()V

    sput-object v0, Lc1/e$b;->e:Lc1/e$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
