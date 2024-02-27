.class public Lr0/q$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/q$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:Lr0/q$e;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lr0/q$e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/q$b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lr0/q$b$a;->b:[Ljava/lang/String;

    iput-object p3, p0, Lr0/q$b$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lr0/q$b$a;->c:Lr0/q$e;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lr0/q$b$a;
    .registers 7

    const-string v0, "uniqueIdentifier"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hints"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "hintText"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    const-string v3, "editingValue"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_27
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3a

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lr0/q$b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_3a
    new-instance v1, Lr0/q$b$a;

    invoke-static {p0}, Lr0/q$e;->a(Lorg/json/JSONObject;)Lr0/q$e;

    move-result-object p0

    invoke-direct {v1, v0, v3, v2, p0}, Lr0/q$b$a;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lr0/q$e;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 17

    move-object/from16 v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_9

    return-object v0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "postalCode"

    const-string v5, "postalAddress"

    const-string v6, "password"

    const-string v7, "newUsername"

    const-string v8, "username"

    const-string v9, "creditCardExpirationYear"

    const-string v10, "creditCardExpirationDate"

    const-string v11, "creditCardNumber"

    const-string v12, "gender"

    const-string v13, "creditCardExpirationDay"

    const-string v14, "creditCardSecurityCode"

    const-string v15, "newPassword"

    const-string v1, "creditCardExpirationMonth"

    sparse-switch v3, :sswitch_data_244

    :goto_2d
    const/4 v2, -0x1

    goto/16 :goto_1ee

    :sswitch_30
    const-string v2, "birthdayDay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_2d

    :cond_39
    const/16 v2, 0x23

    goto/16 :goto_1ee

    :sswitch_3d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_2d

    :cond_44
    const/16 v2, 0x22

    goto/16 :goto_1ee

    :sswitch_48
    const-string v2, "postalAddressExtended"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_2d

    :cond_51
    const/16 v2, 0x21

    goto/16 :goto_1ee

    :sswitch_55
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_2d

    :cond_5c
    const/16 v2, 0x20

    goto/16 :goto_1ee

    :sswitch_60
    const-string v2, "givenName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_2d

    :cond_69
    const/16 v2, 0x1f

    goto/16 :goto_1ee

    :sswitch_6d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    goto :goto_2d

    :cond_74
    const/16 v2, 0x1e

    goto/16 :goto_1ee

    :sswitch_78
    const-string v2, "birthday"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    goto :goto_2d

    :cond_81
    const/16 v2, 0x1d

    goto/16 :goto_1ee

    :sswitch_85
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    goto :goto_2d

    :cond_8c
    const/16 v2, 0x1c

    goto/16 :goto_1ee

    :sswitch_90
    const-string v2, "telephoneNumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    goto :goto_2d

    :cond_99
    const/16 v2, 0x1b

    goto/16 :goto_1ee

    :sswitch_9d
    const-string v3, "familyName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ee

    goto :goto_2d

    :sswitch_a6
    const-string v2, "birthdayMonth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    goto/16 :goto_2d

    :cond_b0
    const/16 v2, 0x19

    goto/16 :goto_1ee

    :sswitch_b4
    const-string v2, "addressState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    goto/16 :goto_2d

    :cond_be
    const/16 v2, 0x18

    goto/16 :goto_1ee

    :sswitch_c2
    const-string v2, "email"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    goto/16 :goto_2d

    :cond_cc
    const/16 v2, 0x17

    goto/16 :goto_1ee

    :sswitch_d0
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    goto/16 :goto_2d

    :cond_da
    const/16 v2, 0x16

    goto/16 :goto_1ee

    :sswitch_de
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    goto/16 :goto_2d

    :cond_e6
    const/16 v2, 0x15

    goto/16 :goto_1ee

    :sswitch_ea
    const-string v2, "telephoneNumberCountryCode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f4

    goto/16 :goto_2d

    :cond_f4
    const/16 v2, 0x14

    goto/16 :goto_1ee

    :sswitch_f8
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_100

    goto/16 :goto_2d

    :cond_100
    const/16 v2, 0x13

    goto/16 :goto_1ee

    :sswitch_104
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    goto/16 :goto_2d

    :cond_10c
    const/16 v2, 0x12

    goto/16 :goto_1ee

    :sswitch_110
    const-string v2, "nameSuffix"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    goto/16 :goto_2d

    :cond_11a
    const/16 v2, 0x11

    goto/16 :goto_1ee

    :sswitch_11e
    const-string v2, "middleName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_128

    goto/16 :goto_2d

    :cond_128
    const/16 v2, 0x10

    goto/16 :goto_1ee

    :sswitch_12c
    const-string v2, "namePrefix"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_136

    goto/16 :goto_2d

    :cond_136
    const/16 v2, 0xf

    goto/16 :goto_1ee

    :sswitch_13a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_142

    goto/16 :goto_2d

    :cond_142
    const/16 v2, 0xe

    goto/16 :goto_1ee

    :sswitch_146
    const-string v2, "postalAddressExtendedPostalCode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_150

    goto/16 :goto_2d

    :cond_150
    const/16 v2, 0xd

    goto/16 :goto_1ee

    :sswitch_154
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15c

    goto/16 :goto_2d

    :cond_15c
    const/16 v2, 0xc

    goto/16 :goto_1ee

    :sswitch_160
    const-string v2, "addressCity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16a

    goto/16 :goto_2d

    :cond_16a
    const/16 v2, 0xb

    goto/16 :goto_1ee

    :sswitch_16e
    const-string v2, "middleInitial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_178

    goto/16 :goto_2d

    :cond_178
    const/16 v2, 0xa

    goto/16 :goto_1ee

    :sswitch_17c
    const-string v2, "countryName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_186

    goto/16 :goto_2d

    :cond_186
    const/16 v2, 0x9

    goto/16 :goto_1ee

    :sswitch_18a
    const-string v2, "telephoneNumberDevice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_194

    goto/16 :goto_2d

    :cond_194
    const/16 v2, 0x8

    goto :goto_1ee

    :sswitch_197
    const-string v2, "fullStreetAddress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a1

    goto/16 :goto_2d

    :cond_1a1
    const/4 v2, 0x7

    goto :goto_1ee

    :sswitch_1a3
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ab

    goto/16 :goto_2d

    :cond_1ab
    const/4 v2, 0x6

    goto :goto_1ee

    :sswitch_1ad
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b5

    goto/16 :goto_2d

    :cond_1b5
    const/4 v2, 0x5

    goto :goto_1ee

    :sswitch_1b7
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bf

    goto/16 :goto_2d

    :cond_1bf
    const/4 v2, 0x4

    goto :goto_1ee

    :sswitch_1c1
    const-string v2, "telephoneNumberNational"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cb

    goto/16 :goto_2d

    :cond_1cb
    const/4 v2, 0x3

    goto :goto_1ee

    :sswitch_1cd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    goto/16 :goto_2d

    :cond_1d5
    const/4 v2, 0x2

    goto :goto_1ee

    :sswitch_1d7
    const-string v2, "oneTimeCode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e1

    goto/16 :goto_2d

    :cond_1e1
    const/4 v2, 0x1

    goto :goto_1ee

    :sswitch_1e3
    const-string v2, "birthdayYear"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ed

    goto/16 :goto_2d

    :cond_1ed
    const/4 v2, 0x0

    :cond_1ee
    :goto_1ee
    packed-switch v2, :pswitch_data_2d6

    return-object v0

    :pswitch_1f2
    const-string v0, "birthDateDay"

    return-object v0

    :pswitch_1f5
    return-object v4

    :pswitch_1f6
    const-string v0, "extendedAddress"

    return-object v0

    :pswitch_1f9
    return-object v5

    :pswitch_1fa
    const-string v0, "personGivenName"

    return-object v0

    :pswitch_1fd
    return-object v6

    :pswitch_1fe
    const-string v0, "birthDateFull"

    return-object v0

    :pswitch_201
    return-object v7

    :pswitch_202
    const-string v0, "phoneNumber"

    return-object v0

    :pswitch_205
    const-string v0, "personFamilyName"

    return-object v0

    :pswitch_208
    const-string v0, "birthDateMonth"

    return-object v0

    :pswitch_20b
    const-string v0, "addressRegion"

    return-object v0

    :pswitch_20e
    const-string v0, "emailAddress"

    return-object v0

    :pswitch_211
    const-string v0, "personName"

    return-object v0

    :pswitch_214
    return-object v8

    :pswitch_215
    const-string v0, "phoneCountryCode"

    return-object v0

    :pswitch_218
    return-object v9

    :pswitch_219
    return-object v10

    :pswitch_21a
    const-string v0, "personNameSuffix"

    return-object v0

    :pswitch_21d
    const-string v0, "personMiddleName"

    return-object v0

    :pswitch_220
    const-string v0, "personNamePrefix"

    return-object v0

    :pswitch_223
    return-object v11

    :pswitch_224
    const-string v0, "extendedPostalCode"

    return-object v0

    :pswitch_227
    return-object v12

    :pswitch_228
    const-string v0, "addressLocality"

    return-object v0

    :pswitch_22b
    const-string v0, "personMiddleInitial"

    return-object v0

    :pswitch_22e
    const-string v0, "addressCountry"

    return-object v0

    :pswitch_231
    const-string v0, "phoneNumberDevice"

    return-object v0

    :pswitch_234
    const-string v0, "streetAddress"

    return-object v0

    :pswitch_237
    return-object v13

    :pswitch_238
    return-object v14

    :pswitch_239
    return-object v15

    :pswitch_23a
    const-string v0, "phoneNational"

    return-object v0

    :pswitch_23d
    return-object v1

    :pswitch_23e
    const-string v0, "smsOTPCode"

    return-object v0

    :pswitch_241
    const-string v0, "birthDateYear"

    return-object v0

    :sswitch_data_244
    .sparse-switch
        -0x7ab827a6 -> :sswitch_1e3
        -0x72476d20 -> :sswitch_1d7
        -0x6df5a7d8 -> :sswitch_1cd
        -0x6cd04ac1 -> :sswitch_1c1
        -0x6c8dd7a5 -> :sswitch_1b7
        -0x68c2726a -> :sswitch_1ad
        -0x6446fcbc -> :sswitch_1a3
        -0x62e1a7de -> :sswitch_197
        -0x5d6852dd -> :sswitch_18a
        -0x580574bf -> :sswitch_17c
        -0x5443ec11 -> :sswitch_16e
        -0x521f7081 -> :sswitch_160
        -0x4a7a0d3f -> :sswitch_154
        -0x46b1d806 -> :sswitch_146
        -0x449b65ae -> :sswitch_13a
        -0x31d43b03 -> :sswitch_12c
        -0x30c50a40 -> :sswitch_11e
        -0x2c8af644 -> :sswitch_110
        -0x24989afa -> :sswitch_104
        -0x248f026b -> :sswitch_f8
        -0x20bc980a -> :sswitch_ea
        -0xfd6772a -> :sswitch_de
        0x337a8b -> :sswitch_d0
        0x5c24b9c -> :sswitch_c2
        0xf1790fd -> :sswitch_b4
        0x230ed603 -> :sswitch_a6
        0x2f98f80f -> :sswitch_9d
        0x352e686d -> :sswitch_90
        0x3b11f696 -> :sswitch_85
        0x3fbd627d -> :sswitch_78
        0x4889ba9b -> :sswitch_6d
        0x578fdfa8 -> :sswitch_60
        0x631a4ca9 -> :sswitch_55
        0x728d6502 -> :sswitch_48
        0x77dfc158 -> :sswitch_3d
        0x77e93bdf -> :sswitch_30
    .end sparse-switch

    :pswitch_data_2d6
    .packed-switch 0x0
        :pswitch_241
        :pswitch_23e
        :pswitch_23d
        :pswitch_23a
        :pswitch_239
        :pswitch_238
        :pswitch_237
        :pswitch_234
        :pswitch_231
        :pswitch_22e
        :pswitch_22b
        :pswitch_228
        :pswitch_227
        :pswitch_224
        :pswitch_223
        :pswitch_220
        :pswitch_21d
        :pswitch_21a
        :pswitch_219
        :pswitch_218
        :pswitch_215
        :pswitch_214
        :pswitch_211
        :pswitch_20e
        :pswitch_20b
        :pswitch_208
        :pswitch_205
        :pswitch_202
        :pswitch_201
        :pswitch_1fe
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f9
        :pswitch_1f6
        :pswitch_1f5
        :pswitch_1f2
    .end packed-switch
.end method
