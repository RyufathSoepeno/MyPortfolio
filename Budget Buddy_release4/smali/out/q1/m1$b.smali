.class public final Lq1/m1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc1/g$c<",
        "Lq1/m1;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic e:Lq1/m1$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/m1$b;

    invoke-direct {v0}, Lq1/m1$b;-><init>()V

    sput-object v0, Lq1/m1$b;->e:Lq1/m1$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
