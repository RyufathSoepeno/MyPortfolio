.class public final Lw/a$a;
.super Lw/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lw/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lw/a$a;

    invoke-direct {v0}, Lw/a$a;-><init>()V

    sput-object v0, Lw/a$a;->b:Lw/a$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lw/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw/a$b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw/a$b<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
