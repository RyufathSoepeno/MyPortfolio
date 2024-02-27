.class public final La1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La1/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, La1/o;

    invoke-direct {v0}, La1/o;-><init>()V

    sput-object v0, La1/o;->a:La1/o;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
